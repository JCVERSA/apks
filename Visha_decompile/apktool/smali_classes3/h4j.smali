.class public final synthetic Lh4j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh4j;->a:I

    iput p2, p0, Lh4j;->b:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lqze;

    sget v0, Ll6j;->X:I

    iget v0, p0, Lh4j;->a:I

    iget p0, p0, Lh4j;->b:I

    invoke-interface {p1, v0, p0}, Lqze;->u(II)V

    return-void
.end method
