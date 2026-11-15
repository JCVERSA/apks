.class public final Lhaj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lhaj;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lhaj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhaj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhaj;-><init>(Z)V

    sput-object v0, Lhaj;->c:Lhaj;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/t;->g:Le5g;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Le5g;->b(Lhaj;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
