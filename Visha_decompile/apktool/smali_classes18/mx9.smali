.class public Lmx9;
.super Llw0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0, p1}, Llw0;-><init>(Lfreemarker/ext/beans/b;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Class;)Lzfa;
    .locals 1

    new-instance v0, Llx9;

    invoke-virtual {p0}, Llw0;->l()Lfreemarker/ext/beans/b;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Llx9;-><init>(Ljava/lang/Class;Lfreemarker/ext/beans/b;)V

    return-object v0
.end method
