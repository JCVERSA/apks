.class public final Lgs0$c;
.super Lk5a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgs0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public g:Lku1$a;


# direct methods
.method public constructor <init>(Lku1$a;)V
    .locals 0

    invoke-direct {p0}, Lk5a;-><init>()V

    iput-object p1, p0, Lgs0$c;->g:Lku1$a;

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 1

    iget-object v0, p0, Lgs0$c;->g:Lku1$a;

    invoke-interface {v0, p0}, Lku1$a;->a(Lku1;)V

    return-void
.end method
