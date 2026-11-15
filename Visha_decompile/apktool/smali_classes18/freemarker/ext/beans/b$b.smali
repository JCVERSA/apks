.class public final Lfreemarker/ext/beans/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/reflect/Method;

.field public b:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b$b;->b:Ljava/lang/Class;

    return-object p0
.end method

.method public b()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b$b;->a:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public c(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/ext/beans/b$b;->b:Ljava/lang/Class;

    return-void
.end method

.method public d(Ljava/lang/reflect/Method;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/ext/beans/b$b;->a:Ljava/lang/reflect/Method;

    return-void
.end method
