.class public final synthetic Lbq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbq;->b:J

    iput-object p3, p0, Lbq;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lbq;->b:J

    iget-object p0, p0, Lbq;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/audio/activities/AudioFolderListDialogActivity;->g0(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
