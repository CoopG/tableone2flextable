tab <- print(tableone::CreateTableOne(data = mtcars))
# note that the object must be a print(tableone) object
ft <- tableone2flextable(tab)
flextable2word(ft)
