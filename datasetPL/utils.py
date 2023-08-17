from problog.extern import problog_export

ERROR = 777777

@problog_export('+int', '+int', '-int')
def oct_div(n1, n2):
    try:
        res = int(oct((n1 // n2))[2:])
    except ZeroDivisionError:
        res = ERROR
    return res