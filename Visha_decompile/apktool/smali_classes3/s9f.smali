.class public final Ls9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lt9f;


# direct methods
.method public constructor <init>(Lt9f;)V
    .locals 0

    iput-object p1, p0, Ls9f;->b:Lt9f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Ls9f;->b:Lt9f;

    const-string p1, "User canceled the download."

    invoke-virtual {p0, p1}, Laaf;->c(Ljava/lang/String;)V

    return-void
.end method
