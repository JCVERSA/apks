.class public final synthetic Lcg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/PrivacyFileFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcg8;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    iput-object p2, p0, Lcg8;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-boolean p3, p0, Lcg8;->d:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcg8;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    iget-object v1, p0, Lcg8;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean p0, p0, Lcg8;->d:Z

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->O4(Lcom/transsion/tools/fragments/PrivacyFileFragment;Lcom/transsion/dbdata/beans/media/MediaItem;ZLandroid/net/Uri;)V

    return-void
.end method
