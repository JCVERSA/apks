.class public Lb1d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/ThreadLocal;


# instance fields
.field public a:Lfreemarker/ext/beans/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lb1d;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lb1d;
    .locals 1

    sget-object v0, Lb1d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lb1d;

    return-object v0

    :cond_0
    new-instance v0, Lb1d;

    invoke-direct {v0}, Lb1d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lfreemarker/ext/beans/b;
    .locals 2

    iget-object v0, p0, Lb1d;->a:Lfreemarker/ext/beans/b;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/ext/beans/b;

    sget-object v1, Lxe1;->h0:Lfreemarker/template/Version;

    invoke-direct {v0, v1}, Lfreemarker/ext/beans/b;-><init>(Lfreemarker/template/Version;)V

    iput-object v0, p0, Lb1d;->a:Lfreemarker/ext/beans/b;

    :cond_0
    iget-object p0, p0, Lb1d;->a:Lfreemarker/ext/beans/b;

    return-object p0
.end method
