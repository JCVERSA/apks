.class public Lud0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq6;


# instance fields
.field public final synthetic a:Lfreemarker/ext/beans/b;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/b;)V
    .locals 0

    iput-object p1, p0, Lud0;->a:Lfreemarker/ext/beans/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lgc7;)Lzfa;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lud0;->a:Lfreemarker/ext/beans/b;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lfreemarker/ext/beans/b;->e(Lfreemarker/ext/beans/b;)Lai0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lfreemarker/ext/beans/b;->f(Lfreemarker/ext/beans/b;)Lai0;

    move-result-object p0

    :goto_0
    return-object p0
.end method
