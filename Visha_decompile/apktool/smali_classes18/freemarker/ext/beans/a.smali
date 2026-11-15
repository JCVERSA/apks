.class public Lfreemarker/ext/beans/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/beans/d;


# instance fields
.field public final synthetic a:Lfreemarker/ext/beans/b;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/b;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/ext/beans/a;->a:Lfreemarker/ext/beans/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfreemarker/ext/beans/b$b;Lfreemarker/ext/beans/b$a;)V
    .locals 1

    iget-object p0, p0, Lfreemarker/ext/beans/a;->a:Lfreemarker/ext/beans/b;

    invoke-virtual {p1}, Lfreemarker/ext/beans/b$b;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/ext/beans/b$b;->b()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lfreemarker/ext/beans/b;->o(Ljava/lang/Class;Ljava/lang/reflect/Method;Lfreemarker/ext/beans/b$a;)V

    return-void
.end method
