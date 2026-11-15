.class public final Lfreemarker/ext/beans/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/beans/PropertyDescriptor;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/beans/PropertyDescriptor;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b$a;->a:Ljava/beans/PropertyDescriptor;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/ext/beans/b$a;->c:Z

    return p0
.end method

.method public d(Ljava/lang/reflect/Method;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lfreemarker/ext/beans/b$a;->a:Ljava/beans/PropertyDescriptor;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/beans/b$a;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lfreemarker/ext/beans/b$a;->c:Z

    return-void
.end method
