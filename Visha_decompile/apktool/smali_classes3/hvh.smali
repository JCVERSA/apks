.class public final Lhvh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lhvh;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhvh;

    invoke-direct {v0}, Lhvh;-><init>()V

    sput-object v0, Lhvh;->b:Lhvh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lhvh;
    .locals 1

    sget-object v0, Lhvh;->b:Lhvh;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lhvh;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lhvh;->a:Landroid/content/Context;

    return-void
.end method
