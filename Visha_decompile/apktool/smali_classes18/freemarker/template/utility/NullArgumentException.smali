.class public Lfreemarker/template/utility/NullArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "The \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\" argument can\'t be null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static check(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Lfreemarker/template/utility/NullArgumentException;

    const-string v0, "Argument can\'t be null"

    invoke-direct {p0, v0}, Lfreemarker/template/utility/NullArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static check(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Lfreemarker/template/utility/NullArgumentException;

    invoke-direct {p1, p0}, Lfreemarker/template/utility/NullArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
