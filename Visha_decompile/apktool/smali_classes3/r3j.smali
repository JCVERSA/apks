.class public final synthetic Lr3j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lo9j;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lo9j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3j;->a:Lo9j;

    iput p2, p0, Lr3j;->b:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lqze;

    sget v0, Ll6j;->X:I

    iget-object v0, p0, Lr3j;->a:Lo9j;

    iget-object v0, v0, Lo9j;->a:Lw4f;

    iget p0, p0, Lr3j;->b:I

    invoke-interface {p1, v0, p0}, Lqze;->q(Lw4f;I)V

    return-void
.end method
