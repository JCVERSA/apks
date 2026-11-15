.class public final synthetic Lm5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lcme;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcme;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5j;->a:Lcme;

    iput p2, p0, Lm5j;->b:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lqze;

    sget v0, Ll6j;->X:I

    iget-object v0, p0, Lm5j;->a:Lcme;

    iget p0, p0, Lm5j;->b:I

    invoke-interface {p1, v0, p0}, Lqze;->e(Lcme;I)V

    return-void
.end method
