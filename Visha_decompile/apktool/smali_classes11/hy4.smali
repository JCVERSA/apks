.class public final synthetic Lhy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:J

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhy4;->b:Landroid/content/Context;

    iput-wide p2, p0, Lhy4;->c:J

    iput-boolean p4, p0, Lhy4;->d:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lhy4;->b:Landroid/content/Context;

    iget-wide v1, p0, Lhy4;->c:J

    iget-boolean p0, p0, Lhy4;->d:Z

    check-cast p1, Lcom/transsion/playercommon/gallery/ImageViewModel;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/playercommon/gallery/ImageViewModel;->c(Landroid/content/Context;JZLcom/transsion/playercommon/gallery/ImageViewModel;)Lne6;

    move-result-object p0

    return-object p0
.end method
