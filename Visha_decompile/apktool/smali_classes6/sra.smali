.class public final synthetic Lsra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsra;->b:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lsra;->b:Landroid/widget/CheckBox;

    check-cast p1, Lcom/transsion/btdownload/ui/DownloadableFileItem;

    invoke-static {p0, p1}, Ltra;->d(Landroid/widget/CheckBox;Lcom/transsion/btdownload/ui/DownloadableFileItem;)V

    return-void
.end method
