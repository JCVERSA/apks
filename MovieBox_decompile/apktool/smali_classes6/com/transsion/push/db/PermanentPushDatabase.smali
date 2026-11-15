.class public abstract Lcom/transsion/push/db/PermanentPushDatabase;
.super Landroidx/room/RoomDatabase;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/db/PermanentPushDatabase$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 \u00072\u00020\u0001:\u0001\u0008B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/transsion/push/db/PermanentPushDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Lcom/transsion/push/db/a;",
        "i0",
        "()Lcom/transsion/push/db/a;",
        "p",
        "a",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final p:Lcom/transsion/push/db/PermanentPushDatabase$a;

.field private static volatile q:Lcom/transsion/push/db/PermanentPushDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/push/db/PermanentPushDatabase$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/push/db/PermanentPushDatabase$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/push/db/PermanentPushDatabase;->p:Lcom/transsion/push/db/PermanentPushDatabase$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g0()Lcom/transsion/push/db/PermanentPushDatabase;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/db/PermanentPushDatabase;->q:Lcom/transsion/push/db/PermanentPushDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h0(Lcom/transsion/push/db/PermanentPushDatabase;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/push/db/PermanentPushDatabase;->q:Lcom/transsion/push/db/PermanentPushDatabase;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public abstract i0()Lcom/transsion/push/db/a;
.end method
