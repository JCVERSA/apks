.class public final Lxug;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lxug;

.field public static final c:Lxug;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/t;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lxug;->c:Lxug;

    sput-object v1, Lxug;->b:Lxug;

    return-void

    :cond_0
    new-instance v0, Lxug;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lxug;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lxug;->c:Lxug;

    new-instance v0, Lxug;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lxug;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lxug;->b:Lxug;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lxug;->a:Ljava/lang/Throwable;

    return-void
.end method
