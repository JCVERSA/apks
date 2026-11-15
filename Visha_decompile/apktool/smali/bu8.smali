.class public final synthetic Lbu8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbu8;->b:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iput p2, p0, Lbu8;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbu8;->b:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget p0, p0, Lbu8;->c:I

    invoke-static {v0, p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    return-void
.end method
