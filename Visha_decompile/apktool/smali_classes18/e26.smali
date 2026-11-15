.class public final synthetic Le26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ld26$b;


# direct methods
.method public synthetic constructor <init>(Ld26$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le26;->b:Ld26$b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le26;->b:Ld26$b;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Ld26$b;->f(Ld26$b;I)La26;

    move-result-object p0

    return-object p0
.end method
