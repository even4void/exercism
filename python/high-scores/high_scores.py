def latest(scores):
    return scores[-1]


def personal_best(scores):
    sorted_scores = sorted(scores)
    return sorted_scores[-1]


def personal_top_three(scores):
    sorted_scores_list = sorted(scores)
    return sorted(sorted_scores_list[-3:], reverse=True)
