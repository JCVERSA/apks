.class public final synthetic Lg27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh27;

.field public final synthetic c:I

.field public final synthetic d:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lh27;I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg27;->b:Lh27;

    iput p2, p0, Lg27;->c:I

    iput-object p3, p0, Lg27;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lg27;->b:Lh27;

    iget v1, p0, Lg27;->c:I

    iget-object p0, p0, Lg27;->d:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lh27;->a(Lh27;I[Ljava/lang/Object;)V

    return-void
.end method
