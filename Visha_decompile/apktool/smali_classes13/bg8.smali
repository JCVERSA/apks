.class public final synthetic Lbg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/PrivacyFileFragment;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbg8;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    iput-object p2, p0, Lbg8;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbg8;->b:Lcom/transsion/tools/fragments/PrivacyFileFragment;

    iget-object p0, p0, Lbg8;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast p1, Lcom/transsion/tools/fragments/PrivacyFileFragment;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/fragments/PrivacyFileFragment;->N4(Lcom/transsion/tools/fragments/PrivacyFileFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/tools/fragments/PrivacyFileFragment;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
