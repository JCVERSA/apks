.class public Lfreemarker/core/_MiscTemplateException;
.super Lfreemarker/template/TemplateException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/core/Environment;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;Lq0d;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0, p2, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0, p2, p3}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V
    .locals 1

    .line 19
    new-instance v0, Lq0d;

    invoke-direct {v0, p4}, Lq0d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lq0d;->b(Lfreemarker/core/t0;)Lq0d;

    move-result-object p4

    invoke-direct {p0, p2, p3, p1, p4}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V
    .locals 1

    .line 16
    new-instance v0, Lq0d;

    invoke-direct {v0, p4}, Lq0d;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lq0d;->b(Lfreemarker/core/t0;)Lq0d;

    move-result-object p4

    invoke-direct {p0, p2, p3, p1, p4}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p3, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lq0d;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0, p3}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V
    .locals 1

    .line 13
    new-instance v0, Lq0d;

    invoke-direct {v0, p3}, Lq0d;-><init>([Ljava/lang/Object;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lq0d;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Lq0d;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    return-void
.end method
