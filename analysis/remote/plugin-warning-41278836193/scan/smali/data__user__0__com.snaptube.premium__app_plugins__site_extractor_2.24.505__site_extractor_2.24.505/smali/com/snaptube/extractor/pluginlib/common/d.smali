.class public abstract Lcom/snaptube/extractor/pluginlib/common/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 1
    invoke-static {}, Ll/g;->p()Lt/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Api"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lt/j;->b(Ljava/lang/String;)Lt/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "fail"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lt/j;->a(Ljava/lang/String;)Lt/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "path"

    .line 18
    .line 19
    const-string v2, "/api/availability"

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "error_no"

    .line 26
    .line 27
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {v0, v1, p0}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "error"

    .line 36
    .line 37
    invoke-interface {p0, v0, p1}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "extra_info"

    .line 42
    .line 43
    invoke-interface {p0, p1, p2}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "duration"

    .line 52
    .line 53
    invoke-interface {p0, p2, p1}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Lt/j;->d()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static b(IJJ)V
    .locals 3

    .line 1
    invoke-static {}, Ll/g;->p()Lt/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Api"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lt/j;->b(Ljava/lang/String;)Lt/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "ok"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lt/j;->a(Ljava/lang/String;)Lt/j;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "path"

    .line 18
    .line 19
    const-string v2, "/api/availability"

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "error_no"

    .line 26
    .line 27
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {v0, v1, p0}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "extra_info"

    .line 36
    .line 37
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p0, v0, p1}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "duration"

    .line 50
    .line 51
    invoke-interface {p0, p2, p1}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string p2, "SimCountry:"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-static {p2}, Lk0/k;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p2, "|ServerCountry:"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lj/c;->d()Lj/c;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {p2}, Lj/c;->f()Lj/a;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-interface {p2}, Lj/a;->d()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string p2, "arg1"

    .line 101
    .line 102
    invoke-interface {p0, p2, p1}, Lt/j;->c(Ljava/lang/String;Ljava/lang/Object;)Lt/j;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p0}, Lt/j;->d()V

    .line 107
    .line 108
    .line 109
    return-void
.end method
