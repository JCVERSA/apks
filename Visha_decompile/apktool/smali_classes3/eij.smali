.class public final synthetic Leij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic a:Lfij;


# direct methods
.method public synthetic constructor <init>(Lfij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leij;->a:Lfij;

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 0

    iget-object p0, p0, Leij;->a:Lfij;

    invoke-static {p0, p1}, Lfij;->a(Lfij;Landroid/media/AudioRouting;)V

    return-void
.end method
