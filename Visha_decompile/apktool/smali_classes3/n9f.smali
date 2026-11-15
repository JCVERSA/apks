.class public final Ln9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lo9f;


# direct methods
.method public constructor <init>(Lo9f;)V
    .locals 0

    iput-object p1, p0, Ln9f;->b:Lo9f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Ln9f;->b:Lo9f;

    const-string p1, "Operation denied by user."

    invoke-virtual {p0, p1}, Laaf;->c(Ljava/lang/String;)V

    return-void
.end method
