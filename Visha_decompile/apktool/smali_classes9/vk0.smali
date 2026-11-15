.class public final synthetic Lvk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvk0;->b:Landroid/widget/TextView;

    iput-wide p2, p0, Lvk0;->c:J

    iput-object p4, p0, Lvk0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvk0;->b:Landroid/widget/TextView;

    iget-wide v1, p0, Lvk0;->c:J

    iget-object p0, p0, Lvk0;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/magicvideo/adapter/BucketDateAdapter;->s(Landroid/widget/TextView;JLjava/lang/String;)V

    return-void
.end method
