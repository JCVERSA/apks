.class Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ServerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/adapter/ServerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field select_image:Landroid/widget/ImageView;

.field server_description:Landroid/widget/TextView;

.field server_flag:Landroid/widget/ImageView;

.field server_name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lapp/fast/ssh/adapter/ServerAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lapp/fast/ssh/adapter/ServerAdapter$ViewHolder;-><init>()V

    return-void
.end method
