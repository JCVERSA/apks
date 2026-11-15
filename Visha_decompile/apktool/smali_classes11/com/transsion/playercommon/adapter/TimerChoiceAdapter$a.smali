.class public Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/adapter/TimerChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/transsion/playercommon/adapter/TimerChoiceAdapter$a;->b:J

    return-void
.end method
