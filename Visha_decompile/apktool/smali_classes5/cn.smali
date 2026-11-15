.class public final synthetic Lcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcn;->b:Landroid/widget/ImageView;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/transsion/audio/adapter/AudioBucketAdapter;->g(Landroid/widget/ImageView;Ljava/lang/Throwable;)V

    return-void
.end method
