.class public final synthetic Lvc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;


# instance fields
.field public final synthetic b:Lwc3;

.field public final synthetic c:Ls74;


# direct methods
.method public synthetic constructor <init>(Lwc3;Ls74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc3;->b:Lwc3;

    iput-object p2, p0, Lvc3;->c:Ls74;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lvc3;->b:Lwc3;

    iget-object p0, p0, Lvc3;->c:Ls74;

    invoke-static {v0, p0}, Lwc3;->a(Lwc3;Ls74;)V

    return-void
.end method
