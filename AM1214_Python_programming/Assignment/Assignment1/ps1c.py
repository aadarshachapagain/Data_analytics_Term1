total_cost = 1000000
obt_annual_salary = float(input('Enter the starting salary:'))
current_savings = 0
begin_portion_saved = 0
end_portion_saved = 10000
actual_down_payment = 0.25 * total_cost
semi_annual_raise = 0.07
r = 0.04
step = 0

# adjust the $100 difference
while abs(current_savings - actual_down_payment) >= 100:
    # take care of integer division
    savings_rate = float(begin_portion_saved + end_portion_saved) / 2.0
    current_savings = 0
    annual_salary = obt_annual_salary

    # Salary is raised every six month
    for i in range(1, 36):
        if i != 1 and i % 6 == 0:
            annual_salary += annual_salary * semi_annual_raise
        current_savings += current_savings * (r/12) + \
            (annual_salary/12) * (savings_rate/10000)

    # binary search implmentation
    if(step > 20):
        print("It is not possible to pay the down payment in three years.")
        break
    elif current_savings < actual_down_payment:
        # update range begin_portion_saved if current savings less than down payment
        begin_portion_saved = savings_rate

    elif current_savings > actual_down_payment:
        # update range end_portion_saved if current savings greater than down payment
        end_portion_saved = savings_rate

    step += 1


print("Best savings rate:", savings_rate/10000)
print("Steps in bisection search: ", step)
