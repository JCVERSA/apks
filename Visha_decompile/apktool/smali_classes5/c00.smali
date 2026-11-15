.class public final synthetic Lc00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc00;->b:Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;

    iput p2, p0, Lc00;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lc00;->b:Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;

    iget p0, p0, Lc00;->c:I

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;->b(Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;ILandroid/view/View;)V

    return-void
.end method
