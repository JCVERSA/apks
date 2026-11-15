.class public Lrm9$a;
.super Lk5a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrm9;->t()Lk5a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lrm9;


# direct methods
.method public constructor <init>(Lrm9;)V
    .locals 0

    iput-object p1, p0, Lrm9$a;->g:Lrm9;

    invoke-direct {p0}, Lk5a;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    iget-object v0, p0, Lrm9$a;->g:Lrm9;

    invoke-static {v0, p0}, Lrm9;->r(Lrm9;Lku1;)V

    return-void
.end method
