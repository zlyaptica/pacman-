#ifndef SCORE_H
#define SCORE_H


class score
{
public:
    int points;
    int points_record;

    void save();
    void load();

    void add(int points, int level);
};

#endif // SCORE_H
