.class public final synthetic Ltk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

.field public final synthetic c:J

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;JLandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltk0;->b:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iput-wide p2, p0, Ltk0;->c:J

    iput-object p4, p0, Ltk0;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ltk0;->b:Lcom/transsion/magicvideo/adapter/BucketDateAdapter;

    iget-wide v1, p0, Ltk0;->c:J

    iget-object p0, p0, Ltk0;->d:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->l(Lcom/transsion/magicvideo/adapter/BucketDateAdapter;JLandroid/widget/TextView;)V

    return-void
.end method
