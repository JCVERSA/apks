.class public final synthetic Lymc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/window/area/WindowAreaSessionCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/area/WindowAreaSessionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lymc;->b:Landroidx/window/area/WindowAreaSessionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lymc;->b:Landroidx/window/area/WindowAreaSessionCallback;

    invoke-static {p0}, Landroidx/window/area/WindowAreaControllerImpl;->a(Landroidx/window/area/WindowAreaSessionCallback;)V

    return-void
.end method
