module {
    public let network = "local"; // ic, local
    let dev = "tiago"; // tiago, jakub, isaac

    public func getGameCanisterId() : Text {
        if (network == "ic") return "gagfs-yqaaa-aaaao-aaiva-cai";

        // else "local"
        if (network == "local" and dev == "jakub") return "";

        // else local && tiago
        return "qvhpv-4qaaa-aaaaa-aaagq-cai";
    };

    public func getCharacterCanisterId() : Text {
        if (network == "ic") return "dhyds-jaaaa-aaaao-aaiia-cai";

        // else "local" && tiago
        return "rkp4c-7iaaa-aaaaa-aaaca-cai";
    };

    public func getAdminPrincipal() : Text {
        if (network == "ic") return "6ulqo-ikasf-xzltp-ylrhu-qt4gt-nv4rz-gd46e-nagoe-3bo7b-kbm3h-bqe";

        // else "local" && tiago
        return "4e6g2-eoooo-h2lec-3h725-hvmmc-fvgsd-qakd3-qsj44-6dlaw-p5ngz-mae";
    };
};
