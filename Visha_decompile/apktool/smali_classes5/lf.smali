.class public final synthetic Llf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AppWidgetMusicDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AppWidgetMusicDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llf;->b:Lcom/transsion/audio/widgets/AppWidgetMusicDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Llf;->b:Lcom/transsion/audio/widgets/AppWidgetMusicDialog;

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/widgets/AppWidgetMusicDialog;->b(Lcom/transsion/audio/widgets/AppWidgetMusicDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method
