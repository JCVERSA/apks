.class public final synthetic Lp09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lied;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lied;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp09;->b:Lied;

    iput p2, p0, Lp09;->c:I

    iput p3, p0, Lp09;->d:I

    iput-boolean p4, p0, Lp09;->e:Z

    iput-object p5, p0, Lp09;->f:Ljava/util/List;

    iput-wide p6, p0, Lp09;->g:J

    iput-object p8, p0, Lp09;->h:Ljava/lang/String;

    iput-object p9, p0, Lp09;->i:Ljava/lang/String;

    iput p10, p0, Lp09;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lp09;->b:Lied;

    iget v1, p0, Lp09;->c:I

    iget v2, p0, Lp09;->d:I

    iget-boolean v3, p0, Lp09;->e:Z

    iget-object v4, p0, Lp09;->f:Ljava/util/List;

    iget-wide v5, p0, Lp09;->g:J

    iget-object v7, p0, Lp09;->h:Ljava/lang/String;

    iget-object v8, p0, Lp09;->i:Ljava/lang/String;

    iget v9, p0, Lp09;->j:I

    invoke-static/range {v0 .. v9}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->f(Lied;IIZLjava/util/List;JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
