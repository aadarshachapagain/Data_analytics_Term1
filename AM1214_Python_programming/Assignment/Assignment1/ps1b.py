annual_salary = float(input('Enter your annual salary:'))
portion_saved = float(
    input('Enter the percent of your salary to save, as a decimal:'))
total_cost = float(input('Enter the cost of your dream home:'))
semi_annual_raise = float(input('Enter the semi-annual raise, as a decimal:'))
portion_down_payment = 0.25
current_savings = 0
r = 0.04

# Down Payment required for home
actual_down_payment = total_cost*portion_down_payment

# Saving from salary every month
saving_every_month = (annual_salary/12)*portion_saved

# At initial month the saving is only from the portion of salary
month = 1
current_savings = saving_every_month

# until downpayment amount is obtained keep on increasing the month
while current_savings < actual_down_payment:
    if month % 6 == 0:
        # Semi annual salary raise happens in every 6 month
        annual_salary_after_raise = annual_salary + semi_annual_raise*annual_salary
        # annual salary is changed after raise
        annual_salary = annual_salary_after_raise
        # As annual salary Chnages saving every month  also changes
        saving_every_month = (annual_salary_after_raise/12)*portion_saved
        current_savings += saving_every_month+current_savings*r/12
    else:
        current_savings += saving_every_month+current_savings*r/12
    month += 1


print('Number of months:{month}'.format(month=month))
