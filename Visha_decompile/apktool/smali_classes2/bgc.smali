.class public final synthetic Lbgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcgc;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcgc;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbgc;->b:Lcgc;

    iput p2, p0, Lbgc;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbgc;->b:Lcgc;

    iget p0, p0, Lbgc;->c:I

    invoke-static {v0, p0}, Lcgc;->a(Lcgc;I)V

    return-void
.end method
