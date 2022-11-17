import difflib
a = "你好世界，我非常荣幸\n这是我的高兴，,我叫彭春友哈哈哈哈J我非常happy"
c = "好世界，我非常荣幸\n这是我的高兴，,我叫彭春友哈哈哈哈J我非常happy"
b = "你好，我非常荣幸\n这是兴，我非常happy, 你是狗吗，哈哈哈哈哈"


def string_similar(s1, s2):
    return difflib.SequenceMatcher(None, s1, s2).quick_ratio()


print(string_similar(a, c))
