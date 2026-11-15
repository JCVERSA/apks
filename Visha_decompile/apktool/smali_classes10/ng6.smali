.class public final synthetic Lng6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lng6;->a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lng6;->a:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;->P(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;Ljava/lang/Boolean;)V

    return-void
.end method
