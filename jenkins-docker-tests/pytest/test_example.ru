import allure

@allure.feature("Basic math")
@allure.story("Addition operation")
@allure.title("Проверка, что 1 + 1 = 2")
def test_addition():
    with allure.step("Выполняем сложение 1 + 1"):
        result = 1 + 1

    with allure.step("Проверяем, что результат равен 2"):
        assert result == 2
