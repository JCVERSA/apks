.class public final synthetic Lo7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ln3f;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ln3f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7f;->a:Ljava/lang/String;

    iput-object p2, p0, Lo7f;->b:Ln3f;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr6f;

    iget-object v0, p0, Lo7f;->a:Ljava/lang/String;

    iget-object p0, p0, Lo7f;->b:Ln3f;

    invoke-interface {p1, v0, p0}, Lr6f;->a(Ljava/lang/String;Ln3f;)V

    return-object p1
.end method
