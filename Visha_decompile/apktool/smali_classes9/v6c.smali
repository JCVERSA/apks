.class public final synthetic Lv6c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv6c;->b:Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;

    iput p2, p0, Lv6c;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lv6c;->b:Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;

    iget p0, p0, Lv6c;->c:I

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;->b(Lcom/transsion/magicvideo/adapter/VideoSettingSelectAdapter;ILandroid/view/View;)V

    return-void
.end method
