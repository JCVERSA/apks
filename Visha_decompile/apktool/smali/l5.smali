.class public final synthetic Ll5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Le74;


# direct methods
.method public synthetic constructor <init>(Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll5;->a:Le74;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ll5;->a:Le74;

    invoke-static {p0, p1}, Landroidx/activity/result/ActivityResultCallerKt;->b(Le74;Ljava/lang/Object;)V

    return-void
.end method
