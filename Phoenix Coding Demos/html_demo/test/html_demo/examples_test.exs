defmodule HtmlDemo.ExamplesTest do
  use HtmlDemo.DataCase

  alias HtmlDemo.Examples

  describe "employees" do
    alias HtmlDemo.Examples.Employee

    import HtmlDemo.ExamplesFixtures

    @invalid_attrs %{name: nil, titke: nil}

    test "list_employees/0 returns all employees" do
      employee = employee_fixture()
      assert Examples.list_employees() == [employee]
    end

    test "get_employee!/1 returns the employee with given id" do
      employee = employee_fixture()
      assert Examples.get_employee!(employee.id) == employee
    end

    test "create_employee/1 with valid data creates a employee" do
      valid_attrs = %{name: "some name", titke: "some titke"}

      assert {:ok, %Employee{} = employee} = Examples.create_employee(valid_attrs)
      assert employee.name == "some name"
      assert employee.titke == "some titke"
    end

    test "create_employee/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Examples.create_employee(@invalid_attrs)
    end

    test "update_employee/2 with valid data updates the employee" do
      employee = employee_fixture()
      update_attrs = %{name: "some updated name", titke: "some updated titke"}

      assert {:ok, %Employee{} = employee} = Examples.update_employee(employee, update_attrs)
      assert employee.name == "some updated name"
      assert employee.titke == "some updated titke"
    end

    test "update_employee/2 with invalid data returns error changeset" do
      employee = employee_fixture()
      assert {:error, %Ecto.Changeset{}} = Examples.update_employee(employee, @invalid_attrs)
      assert employee == Examples.get_employee!(employee.id)
    end

    test "delete_employee/1 deletes the employee" do
      employee = employee_fixture()
      assert {:ok, %Employee{}} = Examples.delete_employee(employee)
      assert_raise Ecto.NoResultsError, fn -> Examples.get_employee!(employee.id) end
    end

    test "change_employee/1 returns a employee changeset" do
      employee = employee_fixture()
      assert %Ecto.Changeset{} = Examples.change_employee(employee)
    end
  end
end
