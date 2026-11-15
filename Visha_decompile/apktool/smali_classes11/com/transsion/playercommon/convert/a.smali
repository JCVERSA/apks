.class public final synthetic Lcom/transsion/playercommon/convert/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/convert/TranConvertingTask$1;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/convert/TranConvertingTask$1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/convert/a;->b:Lcom/transsion/playercommon/convert/TranConvertingTask$1;

    iput-wide p2, p0, Lcom/transsion/playercommon/convert/a;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/convert/a;->b:Lcom/transsion/playercommon/convert/TranConvertingTask$1;

    iget-wide v1, p0, Lcom/transsion/playercommon/convert/a;->c:J

    invoke-static {v0, v1, v2}, Lcom/transsion/playercommon/convert/TranConvertingTask$1;->a(Lcom/transsion/playercommon/convert/TranConvertingTask$1;J)V

    return-void
.end method
