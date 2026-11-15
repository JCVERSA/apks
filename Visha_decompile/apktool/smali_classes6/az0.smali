.class public final synthetic Laz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz0;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Laz0;->b:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->c(Landroid/widget/TextView;)Lzfb;

    move-result-object p0

    return-object p0
.end method
