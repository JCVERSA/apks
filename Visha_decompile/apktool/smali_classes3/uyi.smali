.class public final Luyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqyi;


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public volatile a:Lqyi;

.field public volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Luyi;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lqyi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Luyi;->c:Ljava/lang/Object;

    iput-object v0, p0, Luyi;->b:Ljava/lang/Object;

    iput-object p1, p0, Luyi;->a:Lqyi;

    return-void
.end method

.method public static a(Lqyi;)Lqyi;
    .locals 1

    instance-of v0, p0, Luyi;

    if-nez v0, :cond_1

    instance-of v0, p0, Leyi;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Luyi;

    invoke-direct {v0, p0}, Luyi;-><init>(Lqyi;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Luyi;->b:Ljava/lang/Object;

    sget-object v1, Luyi;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Luyi;->a:Lqyi;

    if-nez v0, :cond_0

    iget-object v0, p0, Luyi;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Luyi;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Luyi;->a:Lqyi;

    :cond_1
    :goto_0
    return-object v0
.end method
