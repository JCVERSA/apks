.class public final synthetic Landroidx/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/activity/ComponentActivity;

.field public final synthetic c:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/c;->b:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Landroidx/activity/c;->c:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/c;->b:Landroidx/activity/ComponentActivity;

    iget-object p0, p0, Landroidx/activity/c;->c:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {v0, p0}, Landroidx/activity/ComponentActivity$onBackPressedDispatcher$2;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method
