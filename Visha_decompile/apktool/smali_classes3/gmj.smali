.class public final synthetic Lgmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcnj;


# instance fields
.field public final synthetic a:Ljmj;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljmj;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgmj;->a:Ljmj;

    iput-object p2, p0, Lgmj;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lknj;Lw4f;)V
    .locals 1

    iget-object v0, p0, Lgmj;->a:Ljmj;

    iget-object p0, p0, Lgmj;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Ljmj;->x(Ljava/lang/Object;Lknj;Lw4f;)V

    return-void
.end method
