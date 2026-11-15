.class public final synthetic Lfi9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/ShortVideosFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/ShortVideosFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfi9;->b:Lcom/transsion/magicvideo/fragments/ShortVideosFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfi9;->b:Lcom/transsion/magicvideo/fragments/ShortVideosFragment;

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->h4(Lcom/transsion/magicvideo/fragments/ShortVideosFragment;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
