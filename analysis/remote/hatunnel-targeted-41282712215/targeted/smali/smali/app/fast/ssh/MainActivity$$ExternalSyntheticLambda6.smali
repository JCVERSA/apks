.class public final synthetic Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lapp/fast/ssh/MainActivity;

.field public final synthetic f$1:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public synthetic constructor <init>(Lapp/fast/ssh/MainActivity;Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda6;->f$0:Lapp/fast/ssh/MainActivity;

    iput-object p2, p0, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda6;->f$1:Lcom/google/android/material/navigation/NavigationView;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda6;->f$0:Lapp/fast/ssh/MainActivity;

    iget-object v1, p0, Lapp/fast/ssh/MainActivity$$ExternalSyntheticLambda6;->f$1:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, v1, p1}, Lapp/fast/ssh/MainActivity;->lambda$onCreate$5$app-fast-ssh-MainActivity(Lcom/google/android/material/navigation/NavigationView;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
