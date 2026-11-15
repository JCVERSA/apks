.class public final synthetic Lo0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic b:Lx0j;


# direct methods
.method public synthetic constructor <init>(Lx0j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0j;->b:Lx0j;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 0

    iget-object p0, p0, Lo0j;->b:Lx0j;

    invoke-static {p0, p1}, Lx0j;->c(Lx0j;I)V

    return-void
.end method
